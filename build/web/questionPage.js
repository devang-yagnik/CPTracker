/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/javascript.js to edit this template
 */


const contestIDhandle = () =>
{
          let id = document.getElementById("contestID").value;
          // let handles = fetchHandle();
          let handles = "shrutsureja";

          let query = "https://codeforces.com/api/contest.standings?contestId=" + id + "&handles=" + handles;
          fetch(query).then(response =>
          {
            return response.json();
          })
            .then((data) =>
            {
              // console.log(data);
              if (data.status === "OK")
              {
                // let contestInfo = data.result.contest;
                // let constestName = contestInfo.name;

                let problems = data.result.problems;
                const table = document.querySelector("#addProblems");
                table.innerHTML = "";
                // let i = 0;
                // let p = data.result.rows.problemResults;
                problems.forEach(problem =>
                {
                  let tags = problem.tags;
                  let tag = "";
                  tags.forEach(tagName =>
                  {
                    tag += `<span
                    class="inline-flex items-center gap-1 rounded-full bg-blue-50 px-2 py-1 text-xs font-semibold text-blue-600">
                    ${tagName}
                    </span>`;
                  });
                  const row = document.createElement("tr");
                  // if (p[i].points > 0.0)
                  // {
                  // row.classList.add('hover:bg-green-600','bg-green-400');
                  // }
                  // else
                  // {
                  row.classList.add("hover:bg-gray-50");
                  // }
                  // i++;
                  row.innerHTML = `
                    <th class="flex gap-3 px-6 py-4 font-normal text-gray-900">
                        <div class="text-sm">
                          <div class="font-medium text-gray-700">${problem.index}</div>
                        </div>
                      </th>
                      <td class="px-6 py-4">${problem.name}</td>
                      <td class="px-6 py-4">
                        <span
                          class="inline-flex items-center gap-1 rounded-full bg-green-50 px-2 py-1 text-xs font-semibold text-green-600"
                        >
                          ${problem.rating}
                        </span>
                      </td>
                      <td class="px-6 py-4">
                        <div class="space-x-2 space-y-2">
                          ${tag}
                        </div>
                        <td class="px-6 py-4">
                          <div class="flex">
                          
                           <button type="button" id="${problem.index}" onclick="getProblemIndex(this.id)" class="text-blue-700 border border-blue-700 hover:bg-blue-700 hover:text-white focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-full text-sm p-2.5 text-center inline-flex items-center dark:border-blue-500 dark:text-blue-500 dark:hover:text-white dark:focus:ring-blue-800 dark:hover:bg-blue-500">
                          <svg xmlns="http://www.w3.org/2000/svg" id="Layer_1" x="0" y="0" version="1.1" class="w-4 h-4" viewBox="0 0 29 29" xml:space="preserve"><path fill="none" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" stroke-width="2" d="M14.5 22V7M7 14.5h15"/></svg>
                              <span class="sr-only">Icon description</span>
                          </button>
                          </div>
                        </td>
                `;
                  table.append(row);
                  // problem.index ${problem.name} , problem.rating 

                });
                document.querySelector("#addProblems");
              }
              else
              {
                //status = failed
                let error = data.comment;
                alert(error);
                // print error
              }
            });
};

